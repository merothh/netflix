.class Lo/VoiceInteractor$6$4;
.super Lo/InvalidClassException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractor$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/VoiceInteractor$6;


# direct methods
.method constructor <init>(Lo/VoiceInteractor$6;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lo/VoiceInteractor$6$4;->c:Lo/VoiceInteractor$6;

    invoke-direct {p0}, Lo/InvalidClassException;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1010
    iget-object p1, p0, Lo/VoiceInteractor$6$4;->c:Lo/VoiceInteractor$6;

    iget-object p1, p1, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1011
    iget-object p1, p0, Lo/VoiceInteractor$6$4;->c:Lo/VoiceInteractor$6;

    iget-object p1, p1, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    .line 1012
    iget-object p1, p0, Lo/VoiceInteractor$6$4;->c:Lo/VoiceInteractor$6;

    iget-object p1, p1, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iput-object v0, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1005
    iget-object p1, p0, Lo/VoiceInteractor$6$4;->c:Lo/VoiceInteractor$6;

    iget-object p1, p1, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
