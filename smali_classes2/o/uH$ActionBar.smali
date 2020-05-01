.class Lo/uH$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:I

.field private final d:[B

.field private final e:I


# direct methods
.method public constructor <init>(II[BJI)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lo/uH$ActionBar;->c:I

    .line 246
    iput p2, p0, Lo/uH$ActionBar;->b:I

    .line 247
    iput-object p3, p0, Lo/uH$ActionBar;->d:[B

    .line 248
    iput-wide p4, p0, Lo/uH$ActionBar;->a:J

    .line 249
    iput p6, p0, Lo/uH$ActionBar;->e:I

    return-void
.end method

.method static synthetic a(Lo/uH$ActionBar;)I
    .locals 0

    .line 237
    iget p0, p0, Lo/uH$ActionBar;->c:I

    return p0
.end method

.method static synthetic b(Lo/uH$ActionBar;)I
    .locals 0

    .line 237
    iget p0, p0, Lo/uH$ActionBar;->b:I

    return p0
.end method

.method static synthetic c(Lo/uH$ActionBar;)[B
    .locals 0

    .line 237
    iget-object p0, p0, Lo/uH$ActionBar;->d:[B

    return-object p0
.end method

.method static synthetic d(Lo/uH$ActionBar;)J
    .locals 2

    .line 237
    iget-wide v0, p0, Lo/uH$ActionBar;->a:J

    return-wide v0
.end method

.method static synthetic e(Lo/uH$ActionBar;)I
    .locals 0

    .line 237
    iget p0, p0, Lo/uH$ActionBar;->e:I

    return p0
.end method
