.class public Lo/Ut$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Activity"
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(IIIFIIF)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lo/Ut$Activity;->d:I

    .line 99
    iput p2, p0, Lo/Ut$Activity;->a:I

    .line 100
    iput p3, p0, Lo/Ut$Activity;->e:I

    .line 101
    iput p4, p0, Lo/Ut$Activity;->b:F

    .line 102
    iput p5, p0, Lo/Ut$Activity;->c:I

    .line 103
    iput p6, p0, Lo/Ut$Activity;->g:I

    .line 104
    iput p7, p0, Lo/Ut$Activity;->f:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 112
    iget v0, p0, Lo/Ut$Activity;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 124
    iget v0, p0, Lo/Ut$Activity;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 108
    iget v0, p0, Lo/Ut$Activity;->d:I

    return v0
.end method

.method public d()F
    .locals 1

    .line 120
    iget v0, p0, Lo/Ut$Activity;->b:F

    return v0
.end method

.method public e()I
    .locals 1

    .line 116
    iget v0, p0, Lo/Ut$Activity;->e:I

    return v0
.end method

.method public g()F
    .locals 1

    .line 132
    iget v0, p0, Lo/Ut$Activity;->f:F

    return v0
.end method

.method public h()I
    .locals 1

    .line 128
    iget v0, p0, Lo/Ut$Activity;->g:I

    return v0
.end method
