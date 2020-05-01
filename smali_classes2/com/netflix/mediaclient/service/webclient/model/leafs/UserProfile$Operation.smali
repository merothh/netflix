.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Operation"
.end annotation


# instance fields
.field public msg:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Operation;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
