.class public final Lo/DC$FragmentManager;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentManager"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DC$FragmentManager;->b:Z

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/DC$FragmentManager;->b:Z

    return v0
.end method
