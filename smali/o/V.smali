.class public final Lo/V;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private final c:I

.field private final d:Lo/ae;

.field private final e:J


# direct methods
.method public constructor <init>(Lo/ae;)V
    .locals 2

    const-string v0, "watchRule"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/V;->d:Lo/ae;

    const/16 p1, 0x14

    .line 11
    iput p1, p0, Lo/V;->c:I

    const-wide/16 v0, 0x1c

    .line 12
    iput-wide v0, p0, Lo/V;->e:J

    .line 15
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    const-string v0, "nfu_cellular_user"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lo/V;->a:Z

    return-void
.end method
