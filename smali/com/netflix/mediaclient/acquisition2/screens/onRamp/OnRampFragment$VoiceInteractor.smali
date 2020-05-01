.class public final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$VoiceInteractor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TextClassificationSessionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterNetworkAction(Lo/TextClassifierImpl$Application;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBeforeNetworkAction(Lo/TextClassifierImpl$ActionBar;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
