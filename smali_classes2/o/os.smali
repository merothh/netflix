.class Lo/os;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public g:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lo/os;->d:J

    .line 16
    iput-wide v0, p0, Lo/os;->e:J

    .line 17
    iput-wide v0, p0, Lo/os;->a:J

    return-void
.end method
