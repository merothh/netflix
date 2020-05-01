.class public final Lo/FH$StateListAnimator;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final j:Ljava/lang/Long;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "currentEpisodeId"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput p1, p0, Lo/FH$StateListAnimator;->a:I

    iput-wide p2, p0, Lo/FH$StateListAnimator;->b:J

    iput-object p4, p0, Lo/FH$StateListAnimator;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/FH$StateListAnimator;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lo/FH$StateListAnimator;->d:Ljava/lang/Integer;

    iput-object p7, p0, Lo/FH$StateListAnimator;->j:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/FH$StateListAnimator;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/FH$StateListAnimator;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lo/FH$StateListAnimator;->b:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .line 24
    iget v0, p0, Lo/FH$StateListAnimator;->a:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/FH$StateListAnimator;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/FH$StateListAnimator;->j:Ljava/lang/Long;

    return-object v0
.end method
