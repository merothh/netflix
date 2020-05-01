.class public final Lo/UW$ActionBar;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private final f:Ljava/lang/String;

.field private final h:Z


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$ActionBar;->e:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput-object p2, p0, Lo/UW$ActionBar;->a:Ljava/lang/String;

    iput-object p3, p0, Lo/UW$ActionBar;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lo/UW$ActionBar;->c:Z

    iput-object p5, p0, Lo/UW$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    iput-object p6, p0, Lo/UW$ActionBar;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lo/UW$ActionBar;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 1

    .line 200
    iget-object v0, p0, Lo/UW$ActionBar;->e:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lo/UW$ActionBar;->c:Z

    return v0
.end method

.method public final c()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;
    .locals 1

    .line 204
    iget-object v0, p0, Lo/UW$ActionBar;->b:Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lo/UW$ActionBar;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lo/UW$ActionBar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lo/UW$ActionBar;->h:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lo/UW$ActionBar;->f:Ljava/lang/String;

    return-object v0
.end method
