.class public final Lo/FH$LoaderManager;
.super Lo/FH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lo/FH;-><init>(Lo/amc;)V

    iput p1, p0, Lo/FH$LoaderManager;->a:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 20
    iget v0, p0, Lo/FH$LoaderManager;->a:I

    return v0
.end method
