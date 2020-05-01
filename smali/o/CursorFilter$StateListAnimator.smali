.class public final Lo/CursorFilter$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CursorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/CursorFilter$StateListAnimator;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    .line 16
    iget v0, p0, Lo/CursorFilter$StateListAnimator;->a:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 16
    iput p1, p0, Lo/CursorFilter$StateListAnimator;->a:I

    return-void
.end method

.method public final e()I
    .locals 1

    .line 15
    iget v0, p0, Lo/CursorFilter$StateListAnimator;->c:I

    return v0
.end method
