.class Lo/VoiceInteractor$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ServiceConnection$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/VoiceInteractor;

.field private b:Lo/ServiceConnection$Activity;


# direct methods
.method public constructor <init>(Lo/VoiceInteractor;Lo/ServiceConnection$Activity;)V
    .locals 0

    .line 2155
    iput-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2156
    iput-object p2, p0, Lo/VoiceInteractor$Application;->b:Lo/ServiceConnection$Activity;

    return-void
.end method


# virtual methods
.method public d(Lo/ServiceConnection;)V
    .locals 2

    .line 2176
    iget-object v0, p0, Lo/VoiceInteractor$Application;->b:Lo/ServiceConnection$Activity;

    invoke-interface {v0, p1}, Lo/ServiceConnection$Activity;->d(Lo/ServiceConnection;)V

    .line 2177
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->h:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2178
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    :cond_0
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    .line 2182
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    invoke-virtual {p1}, Lo/VoiceInteractor;->s()V

    .line 2183
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object v0, p1, Lo/VoiceInteractor;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lo/FilterWriter;->k(Landroid/view/View;)Lo/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/InputStream;->c(F)Lo/InputStream;

    move-result-object v0

    iput-object v0, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    .line 2184
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->n:Lo/InputStream;

    new-instance v0, Lo/VoiceInteractor$Application$1;

    invoke-direct {v0, p0}, Lo/VoiceInteractor$Application$1;-><init>(Lo/VoiceInteractor$Application;)V

    invoke-virtual {p1, v0}, Lo/InputStream;->c(Lo/InputStreamReader;)Lo/InputStream;

    .line 2199
    :cond_1
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->c:Lo/TaskStackBuilder;

    if-eqz p1, :cond_2

    .line 2200
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object p1, p1, Lo/VoiceInteractor;->c:Lo/TaskStackBuilder;

    iget-object v0, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    iget-object v0, v0, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    invoke-interface {p1, v0}, Lo/TaskStackBuilder;->onSupportActionModeFinished(Lo/ServiceConnection;)V

    .line 2202
    :cond_2
    iget-object p1, p0, Lo/VoiceInteractor$Application;->a:Lo/VoiceInteractor;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/VoiceInteractor;->i:Lo/ServiceConnection;

    return-void
.end method

.method public d(Lo/ServiceConnection;Landroid/view/Menu;)Z
    .locals 1

    .line 2161
    iget-object v0, p0, Lo/VoiceInteractor$Application;->b:Lo/ServiceConnection$Activity;

    invoke-interface {v0, p1, p2}, Lo/ServiceConnection$Activity;->d(Lo/ServiceConnection;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public e(Lo/ServiceConnection;Landroid/view/Menu;)Z
    .locals 1

    .line 2166
    iget-object v0, p0, Lo/VoiceInteractor$Application;->b:Lo/ServiceConnection$Activity;

    invoke-interface {v0, p1, p2}, Lo/ServiceConnection$Activity;->e(Lo/ServiceConnection;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public e(Lo/ServiceConnection;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2171
    iget-object v0, p0, Lo/VoiceInteractor$Application;->b:Lo/ServiceConnection$Activity;

    invoke-interface {v0, p1, p2}, Lo/ServiceConnection$Activity;->e(Lo/ServiceConnection;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
