[Uno.Compiler.UxGenerated]
public partial class ProfileView: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    global::Uno.UX.Property<Uno.UX.FileSource> temp_File_inst;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb1"
    };
    static ProfileView()
    {
    }
    [global::Uno.UX.UXConstructor]
    public ProfileView(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp1 = new global::Fuse.Reactive.Data("goBack");
        var temp = new global::Fuse.Controls.Image();
        temp_File_inst = new navigationanimation_FuseControlsImage_File_Property(temp, __selector0);
        var temp2 = new global::Fuse.Reactive.Data("resource");
        var temp3 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp4 = new global::Fuse.Controls.ScrollView();
        var temp5 = new global::Fuse.Controls.StackPanel();
        var temp6 = new global::Fuse.Controls.Button();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp1, __g_nametable);
        var temp7 = new global::Fuse.Controls.Text();
        var temp8 = new global::Fuse.Reactive.DataBinding(temp_File_inst, temp2, __g_nametable, Fuse.Reactive.BindingMode.Default);
        temp3.LineNumber = 3;
        temp3.FileName = "ProfileView.ux";
        temp3.File = new global::Uno.UX.BundleFileSource(import global::Uno.IO.BundleFile("../../../../../js/ProfileView.js"));
        temp4.Children.Add(temp5);
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp7);
        temp5.Children.Add(temp);
        temp6.Text = "Back";
        global::Fuse.Gestures.Clicked.AddHandler(temp6, temp_eb1.OnEvent);
        temp6.Bindings.Add(temp_eb1);
        temp7.Value = "Resource:";
        temp.Bindings.Add(temp8);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb1);
        this.Children.Add(temp3);
        this.Children.Add(temp4);
    }
    static global::Uno.UX.Selector __selector0 = "File";
}
