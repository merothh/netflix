.class public final Lo/UU$LoaderManager;
.super Lo/UU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# instance fields
.field private final b:I

.field private final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lo/UU;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UU$LoaderManager;->d:I

    iput p2, p0, Lo/UU$LoaderManager;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 38
    iget v0, p0, Lo/UU$LoaderManager;->d:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 38
    iget v0, p0, Lo/UU$LoaderManager;->b:I

    return v0
.end method
