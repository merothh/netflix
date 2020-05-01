.class public final Lo/Po;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/Bc;

.field private final e:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;Lo/Bc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Po;->e:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    iput-object p2, p0, Lo/Po;->b:Lo/Bc;

    return-void
.end method


# virtual methods
.method public final b()Lo/Bc;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Po;->b:Lo/Bc;

    return-object v0
.end method

.method public final c()Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/Po;->e:Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    return-object v0
.end method
