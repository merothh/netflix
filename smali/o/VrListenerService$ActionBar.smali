.class final Lo/VrListenerService$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VrListenerService;->e(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/VrListenerService;


# direct methods
.method constructor <init>(Lo/VrListenerService;)V
    .locals 0

    iput-object p1, p0, Lo/VrListenerService$ActionBar;->b:Lo/VrListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 250
    iget-object p1, p0, Lo/VrListenerService$ActionBar;->b:Lo/VrListenerService;

    invoke-static {p1}, Lo/VrListenerService;->c(Lo/VrListenerService;)Lo/RecognizerIntent;

    move-result-object p1

    invoke-interface {p1}, Lo/RecognizerIntent;->e()V

    .line 254
    :cond_0
    iget-object p1, p0, Lo/VrListenerService$ActionBar;->b:Lo/VrListenerService;

    invoke-static {p1}, Lo/VrListenerService;->a(Lo/VrListenerService;)Lo/GateKeeperResponse;

    move-result-object p1

    invoke-virtual {p1}, Lo/GateKeeperResponse;->d()V

    const/4 p1, 0x1

    return p1
.end method
