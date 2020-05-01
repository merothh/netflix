.class public final Lo/ZR$StateListAnimator;
.super Lo/ZR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final a:J

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lo/ZR;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/ZR$StateListAnimator;->e:Ljava/lang/String;

    iput-wide p2, p0, Lo/ZR$StateListAnimator;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lo/ZR$StateListAnimator;->a:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/ZR$StateListAnimator;->e:Ljava/lang/String;

    return-object v0
.end method
