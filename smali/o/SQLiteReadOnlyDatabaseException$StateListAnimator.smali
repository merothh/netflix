.class public abstract Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SQLiteReadOnlyDatabaseException$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteReadOnlyDatabaseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateListAnimator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .locals 10

    .line 149
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    move v4, p3

    int-to-float v1, v4

    div-float v8, v0, v1

    .line 150
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    move v5, p4

    int-to-float v1, v5

    div-float v9, v0, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    move/from16 v7, p6

    .line 151
    invoke-virtual/range {v1 .. v9}, Lo/SQLiteReadOnlyDatabaseException$StateListAnimator;->e(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V

    return-object p1
.end method

.method public abstract e(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
.end method
