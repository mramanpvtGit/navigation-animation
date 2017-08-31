[Uno.Compiler.UxGenerated]
public partial class Card: Fuse.Controls.Panel
{
    global::Uno.UX.Property<float> overlayRect_Opacity_inst;
    internal global::Fuse.Controls.Rectangle overlayRect;
    static Card()
    {
    }
    [global::Uno.UX.UXConstructor]
    public Card()
    {
        InitializeUX();
    }
    void InitializeUX()
    {
        overlayRect = new global::Fuse.Controls.Rectangle();
        overlayRect_Opacity_inst = new navigationanimation_FuseElementsElement_Opacity_Property(overlayRect, __selector0);
        var temp = new global::Fuse.Navigation.EnteringAnimation();
        var temp1 = new global::Fuse.Animations.Move();
        var temp2 = new global::Fuse.Navigation.ExitingAnimation();
        var temp3 = new global::Fuse.Animations.Move();
        var temp4 = new global::Fuse.Animations.Move();
        var temp5 = new global::Fuse.Animations.Keyframe();
        var temp6 = new global::Fuse.Animations.Keyframe();
        var temp7 = new global::Fuse.Animations.Keyframe();
        var temp8 = new global::Fuse.Animations.Keyframe();
        var temp9 = new global::Fuse.Animations.Keyframe();
        var temp10 = new global::Fuse.Animations.Change<float>(overlayRect_Opacity_inst);
        var temp11 = new global::Fuse.Animations.Scale();
        var temp12 = new global::Fuse.Animations.Rotate();
        this.Width = new Uno.UX.Size(256f, Uno.UX.Unit.Unspecified);
        this.Height = new Uno.UX.Size(256f, Uno.UX.Unit.Unspecified);
        this.Alignment = Fuse.Elements.Alignment.Bottom;
        this.Name = __selector1;
        overlayRect.CornerRadius = float4(25f, 25f, 25f, 25f);
        overlayRect.Color = float4(0.9333333f, 0.9333333f, 0.9333333f, 1f);
        overlayRect.Opacity = 0f;
        overlayRect.Layer = Fuse.Layer.Overlay;
        overlayRect.Name = __selector2;
        temp.Scale = 0.35f;
        temp.Animators.Add(temp1);
        temp1.X = -4f;
        temp1.RelativeTo = Fuse.TranslationModes.Size;
        temp2.Scale = 0.1f;
        temp2.Animators.Add(temp3);
        temp2.Animators.Add(temp4);
        temp2.Animators.Add(temp10);
        temp2.Animators.Add(temp11);
        temp2.Animators.Add(temp12);
        temp3.Y = -1.3f;
        temp3.Duration = 1;
        temp3.RelativeTo = Fuse.TranslationModes.Size;
        temp3.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp4.KeyframeInterpolation = Fuse.Animations.KeyframeInterpolation.CatmullRom;
        temp4.RelativeTo = Fuse.TranslationModes.Size;
        temp4.Keyframes.Add(temp5);
        temp4.Keyframes.Add(temp6);
        temp4.Keyframes.Add(temp7);
        temp4.Keyframes.Add(temp8);
        temp4.Keyframes.Add(temp9);
        temp5.X = 0.15f;
        temp5.Time = 0.15;
        temp6.X = 0.2f;
        temp6.Time = 0.3;
        temp7.X = 0.25f;
        temp7.Time = 0.45;
        temp8.X = 0.2f;
        temp8.Time = 0.6;
        temp9.X = 0f;
        temp9.Time = 1;
        temp10.Value = 1f;
        temp10.Duration = 1;
        temp10.Easing = Fuse.Animations.Easing.QuadraticInOut;
        temp11.Factor = 0.4f;
        temp11.Duration = 1;
        temp12.Degrees = -50f;
        temp12.Duration = 1;
        temp12.Easing = Fuse.Animations.Easing.QuadraticInOut;
        this.Children.Add(overlayRect);
        this.Children.Add(temp);
        this.Children.Add(temp2);
    }
    static global::Uno.UX.Selector __selector0 = "Opacity";
    static global::Uno.UX.Selector __selector1 = "p";
    static global::Uno.UX.Selector __selector2 = "overlayRect";
}
