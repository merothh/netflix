.class public Lo/yh$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Activity"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final c:J

.field final d:J

.field final synthetic e:Lo/yh;


# direct methods
.method public constructor <init>(Lo/yh;Ljava/lang/String;JJ)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/yh$Activity;->e:Lo/yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p5, p0, Lo/yh$Activity;->d:J

    .line 57
    iput-object p2, p0, Lo/yh$Activity;->a:Ljava/lang/String;

    .line 58
    iput-wide p3, p0, Lo/yh$Activity;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/yh$Activity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lo/yh$Activity;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lo/yh$Activity;->d:J

    return-wide v0
.end method
