.class public final Lo/Override$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Override;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lo/Override$Activity;->c:I

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lo/Override$Activity;->e:I

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lo/Override$Activity;->d:I

    return-void
.end method
