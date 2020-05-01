.class public final Lo/UP$DatabaseErrorHandler;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseErrorHandler"
.end annotation


# instance fields
.field private final a:J

.field private final e:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-wide p1, p0, Lo/UP$DatabaseErrorHandler;->a:J

    iput-wide p3, p0, Lo/UP$DatabaseErrorHandler;->e:J

    return-void
.end method


# virtual methods
.method public final d()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lo/UP$DatabaseErrorHandler;->e:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lo/UP$DatabaseErrorHandler;->a:J

    return-wide v0
.end method
