.class public final Lo/DC$ComponentName;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentName"
.end annotation


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-boolean p1, p0, Lo/DC$ComponentName;->c:Z

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lo/DC$ComponentName;->c:Z

    return v0
.end method
