.class public final Lo/Pp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final d:Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Pp;->d:Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    return-void
.end method


# virtual methods
.method public final e()Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/Pp;->d:Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    return-object v0
.end method
