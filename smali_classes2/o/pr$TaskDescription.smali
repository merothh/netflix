.class public final Lo/pr$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/pr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final d:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/pr$TaskDescription;->a:I

    iput-wide p2, p0, Lo/pr$TaskDescription;->d:J

    iput-wide p4, p0, Lo/pr$TaskDescription;->b:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 29
    iget v0, p0, Lo/pr$TaskDescription;->a:I

    return v0
.end method

.method public final c()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lo/pr$TaskDescription;->b:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lo/pr$TaskDescription;->d:J

    return-wide v0
.end method
