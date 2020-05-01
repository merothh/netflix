.class public final Lo/UW$TaskDescription;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final g:Z

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$TaskDescription;->b:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput-object p2, p0, Lo/UW$TaskDescription;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/UW$TaskDescription;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/UW$TaskDescription;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lo/UW$TaskDescription;->a:Ljava/lang/String;

    iput-boolean p6, p0, Lo/UW$TaskDescription;->g:Z

    iput p7, p0, Lo/UW$TaskDescription;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lo/UW$TaskDescription;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lo/UW$TaskDescription;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .line 227
    iget-object v0, p0, Lo/UW$TaskDescription;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 1

    .line 224
    iget-object v0, p0, Lo/UW$TaskDescription;->b:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lo/UW$TaskDescription;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 230
    iget v0, p0, Lo/UW$TaskDescription;->h:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lo/UW$TaskDescription;->g:Z

    return v0
.end method
