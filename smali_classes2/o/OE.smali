.class public final Lo/OE;
.super Lo/OL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OE$Activity;
    }
.end annotation


# instance fields
.field private final b:Z

.field private final d:Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

.field private final e:I


# direct methods
.method public constructor <init>(ILcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;Z)V
    .locals 1

    const-string v0, "action"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lo/OL;-><init>(Z)V

    iput p1, p0, Lo/OE;->e:I

    iput-object p2, p0, Lo/OE;->d:Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    iput-boolean p3, p0, Lo/OE;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ILcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;ZILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x3

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/OE;-><init>(ILcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget v0, p0, Lo/OE;->e:I

    return v0
.end method

.method public final c()Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/OE;->d:Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lo/OE;->b:Z

    return v0
.end method
