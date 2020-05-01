.class public Lo/tH$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:J

.field public i:I

.field public j:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIZIIJII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lo/tH$Activity;->c:I

    .line 34
    iput-object p2, p0, Lo/tH$Activity;->b:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lo/tH$Activity;->a:Ljava/lang/String;

    .line 36
    iput p4, p0, Lo/tH$Activity;->d:I

    .line 37
    iput p5, p0, Lo/tH$Activity;->e:I

    .line 38
    iput p6, p0, Lo/tH$Activity;->i:I

    .line 39
    iput-boolean p7, p0, Lo/tH$Activity;->g:Z

    .line 40
    iput p8, p0, Lo/tH$Activity;->j:I

    .line 41
    iput p9, p0, Lo/tH$Activity;->f:I

    .line 42
    iput-wide p10, p0, Lo/tH$Activity;->h:J

    .line 43
    iput p12, p0, Lo/tH$Activity;->n:I

    .line 44
    iput p13, p0, Lo/tH$Activity;->o:I

    return-void
.end method
