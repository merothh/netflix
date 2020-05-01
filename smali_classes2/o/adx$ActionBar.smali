.class Lo/adx$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/adx$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic e:Lo/adx;


# direct methods
.method private constructor <init>(Lo/adx;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lo/adx$ActionBar;->e:Lo/adx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/adx;Lo/adx$5;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lo/adx$ActionBar;-><init>(Lo/adx;)V

    return-void
.end method


# virtual methods
.method public b(IJ)Z
    .locals 0

    .line 270
    iget-object p1, p0, Lo/adx$ActionBar;->e:Lo/adx;

    invoke-virtual {p1}, Lo/adx;->j()I

    move-result p1

    .line 271
    iget-object p2, p0, Lo/adx$ActionBar;->e:Lo/adx;

    iget p2, p2, Lo/adx;->d:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
