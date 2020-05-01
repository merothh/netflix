.class final Lo/OrientationListener$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OrientationListener;->c(Lo/OrientationListener$Application;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/OrientationListener;

.field final synthetic c:Lo/OrientationListener$Application;

.field final synthetic d:I

.field final synthetic e:Lo/RecordingCanvas;


# direct methods
.method constructor <init>(Lo/OrientationListener;ILo/RecordingCanvas;Lo/OrientationListener$Application;)V
    .locals 0

    iput-object p1, p0, Lo/OrientationListener$ActionBar;->b:Lo/OrientationListener;

    iput p2, p0, Lo/OrientationListener$ActionBar;->d:I

    iput-object p3, p0, Lo/OrientationListener$ActionBar;->e:Lo/RecordingCanvas;

    iput-object p4, p0, Lo/OrientationListener$ActionBar;->c:Lo/OrientationListener$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lo/OrientationListener$ActionBar;->b:Lo/OrientationListener;

    invoke-static {p1}, Lo/OrientationListener;->d(Lo/OrientationListener;)I

    move-result p1

    iget v0, p0, Lo/OrientationListener$ActionBar;->d:I

    if-eq p1, v0, :cond_0

    .line 57
    iget-object p1, p0, Lo/OrientationListener$ActionBar;->e:Lo/RecordingCanvas;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/RecordingCanvas;->c(Z)V

    .line 58
    iget-object p1, p0, Lo/OrientationListener$ActionBar;->c:Lo/OrientationListener$Application;

    invoke-virtual {p1}, Lo/OrientationListener$Application;->b()Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 59
    iget-object p1, p0, Lo/OrientationListener$ActionBar;->b:Lo/OrientationListener;

    invoke-static {p1}, Lo/OrientationListener;->e(Lo/OrientationListener;)Lo/Cloneable;

    move-result-object p1

    iget-object v0, p0, Lo/OrientationListener$ActionBar;->e:Lo/RecordingCanvas;

    invoke-virtual {v0}, Lo/RecordingCanvas;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lo/OrientationListener$ActionBar;->b:Lo/OrientationListener;

    invoke-static {p1}, Lo/OrientationListener;->c(Lo/OrientationListener;)Lo/RemoteAnimationDefinition;

    move-result-object p1

    iget-object v0, p0, Lo/OrientationListener$ActionBar;->e:Lo/RecordingCanvas;

    invoke-virtual {v0}, Lo/RecordingCanvas;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/RemoteAnimationDefinition;->e(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lo/OrientationListener$ActionBar;->b:Lo/OrientationListener;

    iget v0, p0, Lo/OrientationListener$ActionBar;->d:I

    invoke-static {p1, v0}, Lo/OrientationListener;->a(Lo/OrientationListener;I)V

    :cond_0
    return-void
.end method
