.class final Lo/ArrayList$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field c:F

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    const/4 v0, -0x1

    .line 456
    iput v0, p0, Lo/ArrayList$TaskDescription;->d:I

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lo/ArrayList$TaskDescription;->c:F

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Lo/ArrayList$TaskDescription;->e:I

    return-void
.end method
