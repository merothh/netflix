.class Lo/VoiceInteractor$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractor;->c(Lo/ServiceConnection$Activity;)Lo/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/VoiceInteractor;


# direct methods
.method constructor <init>(Lo/VoiceInteractor;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 994
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v1, v1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 997
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->s()V

    .line 999
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    invoke-virtual {v0}, Lo/VoiceInteractor;->q()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1001
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v2, v0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object v1

    iput-object v1, v0, Lo/VoiceInteractor;->n:Lo/InputStream;

    .line 1002
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->n:Lo/InputStream;

    new-instance v1, Lo/VoiceInteractor$6$4;

    invoke-direct {v1, p0}, Lo/VoiceInteractor$6$4;-><init>(Lo/VoiceInteractor$6;)V

    invoke-virtual {v0, v1}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1017
    iget-object v0, p0, Lo/VoiceInteractor$6;->b:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
