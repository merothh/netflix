.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Language"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;->code:Ljava/lang/String;

    return-void
.end method
