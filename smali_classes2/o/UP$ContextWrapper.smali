.class public final Lo/UP$ContextWrapper;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContextWrapper"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private final e:Z

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Moment;ZZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$ContextWrapper;->b:Ljava/lang/String;

    iput-object p2, p0, Lo/UP$ContextWrapper;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/UP$ContextWrapper;->d:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput-boolean p4, p0, Lo/UP$ContextWrapper;->e:Z

    iput-boolean p5, p0, Lo/UP$ContextWrapper;->a:Z

    iput-object p6, p0, Lo/UP$ContextWrapper;->g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Moment;ZZLjava/lang/String;ILo/amc;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    .line 196
    check-cast p6, Ljava/lang/String;

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lo/UP$ContextWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/Moment;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lo/UP$ContextWrapper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lo/UP$ContextWrapper;->a:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lo/UP$ContextWrapper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 1

    .line 193
    iget-object v0, p0, Lo/UP$ContextWrapper;->d:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lo/UP$ContextWrapper;->e:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lo/UP$ContextWrapper;->g:Ljava/lang/String;

    return-object v0
.end method
