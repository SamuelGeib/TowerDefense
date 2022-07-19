using Godot;
using System;
using System.Collections.Generic;

public class Main : Node
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";
	//string[] Roots = new string[] {"res://Root/MainMenu.tscn", "res://Root/Map_0.tscn"};
	Dictionary<string, string> Roots = new Dictionary<string, string>();
	string CurRoot = "MainMenu";
	public Node TreeRoot
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		Roots.Add("MainMenu", "res://Root/MainMenu.tscn");
		Roots.Add("Map_0", "res://Root/Map_0.tscn");
		TreeRoot = GetTree();
		GD.Print(Roots["MainMenu"]);
	}
	
	static public void SetRoot(string NewRoot)
	{
		TreeRoot.ChangeScene(Roots[NewRoot]);
		CurRoot = NewRoot;
	}
}
