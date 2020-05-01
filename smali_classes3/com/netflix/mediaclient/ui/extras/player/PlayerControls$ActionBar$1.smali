.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;->d:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    sget-object p1, Lo/WebViewFragment;->d:Lo/WebViewFragment;

    .line 582
    const-class p1, Lo/WebViewLibraryLoader;

    invoke-static {p1}, Lo/WebViewFragment;->a(Ljava/lang/Class;)Lo/WebViewFactory;

    move-result-object p1

    .line 256
    check-cast p1, Lo/WebViewLibraryLoader;

    .line 257
    invoke-virtual {p1}, Lo/WebViewLibraryLoader;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 258
    invoke-virtual {p1, v0, v1}, Lo/WebViewLibraryLoader;->e(ZZ)V

    if-eqz v0, :cond_0

    .line 264
    new-instance p1, Lcom/netflix/cl/model/event/session/command/MuteCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/MuteCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    goto :goto_0

    .line 266
    :cond_0
    new-instance p1, Lcom/netflix/cl/model/event/session/command/UnmuteCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/UnmuteCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    :goto_0
    return-void
.end method
