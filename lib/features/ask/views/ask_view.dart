import 'package:flutter/material.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';

class AskView extends StatefulWidget {
  const AskView({super.key});

  @override
  State<AskView> createState() => _AskViewState();
}

class _AskViewState extends State<AskView> {
  List<Widget> messages = [];
  TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    messages = [
      _buildMessageBubble("Hi there!", true),
      _buildMessageBubble("Hello! How can I help you?", false),
      _buildMessageBubble("I need some assistance with my project.", true),
      _buildMessageBubble("Sure, let me know the details.", false),
      _buildMessageBubble("Hi there!", true),
      _buildMessageBubble("Hello! How can I help you?", false),
      _buildMessageBubble("I need some assistance with my project.", true),
      _buildMessageBubble("Sure, let me know the details.", false),
      _buildMessageBubble("Hi there!", true),
      _buildMessageBubble("Hello! How can I help you?", false),
      _buildMessageBubble("I need some assistance with my project.", true),
      _buildMessageBubble("Sure, let me know the details.", false),
    ];
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    super.initState();
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  itemCount: messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return messages[index];
                  },

                ),
              ),
              _buildMessageInputField(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageBubble(String message, bool isSender) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? buttonBackgroundColor : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: isSender ? Radius.circular(12) : Radius.circular(0),
            bottomRight: isSender ? Radius.circular(0) : Radius.circular(12),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isSender ? buttonTextColor : Colors.black,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 16
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInputField() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
              ),
              decoration: InputDecoration(
                hintText: "Type a message",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: buttonBackgroundColor,
            child: IconButton(
              onPressed: () {
                messages.add(_buildMessageBubble(_messageController.text, true));
                WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
                setState(() {});
              },
              icon: Icon(Icons.send, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

