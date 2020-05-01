.class public final Lo/OS;
.super Lo/OL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OS$ActionBar;
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

.field private final e:I


# direct methods
.method public constructor <init>(ILcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Ljava/lang/String;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterType"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lo/OL;-><init>(Z)V

    iput p1, p0, Lo/OS;->e:I

    iput-object p2, p0, Lo/OS;->d:Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    iput-object p3, p0, Lo/OS;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Ljava/lang/String;ILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x5

    .line 36
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/OS;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 36
    iget v0, p0, Lo/OS;->e:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/OS;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/OS;->d:Lcom/netflix/model/leafs/social/multititle/NotificationRatingInfoModule;

    return-object v0
.end method
