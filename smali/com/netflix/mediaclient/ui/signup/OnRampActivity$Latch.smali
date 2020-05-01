.class public Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;
.super Ljava/lang/Object;
.source "OnRampActivity.java"


# instance fields
.field private onRampSelectionMade:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->onRampSelectionMade:Z

    return p1
.end method


# virtual methods
.method public getValueAndLatch()Z
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->onRampSelectionMade:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/signup/OnRampActivity$Latch;->onRampSelectionMade:Z

    return v0
.end method
