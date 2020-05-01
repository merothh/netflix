.class final Lo/uK$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field public final a:Z

.field public final b:[I

.field public final c:I

.field public final d:Z

.field public final e:I

.field public final h:Z


# direct methods
.method public constructor <init>(I[IIZZZ)V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput p1, p0, Lo/uK$ActionBar;->e:I

    .line 486
    iput-object p2, p0, Lo/uK$ActionBar;->b:[I

    .line 487
    iput p3, p0, Lo/uK$ActionBar;->c:I

    .line 488
    iput-boolean p4, p0, Lo/uK$ActionBar;->a:Z

    .line 489
    iput-boolean p5, p0, Lo/uK$ActionBar;->d:Z

    .line 490
    iput-boolean p6, p0, Lo/uK$ActionBar;->h:Z

    return-void
.end method
