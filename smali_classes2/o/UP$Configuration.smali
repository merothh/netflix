.class public final Lo/UP$Configuration;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UP$Configuration;->a:I

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 38
    iget v0, p0, Lo/UP$Configuration;->a:I

    return v0
.end method
