.class public final Lo/GateKeeperResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GateKeeperResponse;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 13
    sget-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;

    iget-object v1, p0, Lo/GateKeeperResponse;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/util/AUIKeyboardUtilities;->dismissKeyboard(Landroid/app/Activity;)V

    return-void
.end method
