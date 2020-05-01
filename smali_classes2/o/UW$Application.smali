.class public final Lo/UW$Application;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private final d:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final h:Z


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$Application;->c:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput-object p2, p0, Lo/UW$Application;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/UW$Application;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lo/UW$Application;->b:Z

    iput-object p5, p0, Lo/UW$Application;->d:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    iput p6, p0, Lo/UW$Application;->f:I

    iput-boolean p7, p0, Lo/UW$Application;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lo/UW$Application;->b:Z

    return v0
.end method

.method public final b()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
    .locals 1

    .line 217
    iget-object v0, p0, Lo/UW$Application;->d:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lo/UW$Application;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lo/UW$Application;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 1

    .line 213
    iget-object v0, p0, Lo/UW$Application;->c:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 218
    iget v0, p0, Lo/UW$Application;->f:I

    return v0
.end method

.method public final i()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lo/UW$Application;->h:Z

    return v0
.end method
