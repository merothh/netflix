.class public Lo/PackageManagerInternal$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PackageManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field public final b:J

.field public final c:J

.field public final e:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-wide p1, p0, Lo/PackageManagerInternal$ActionBar;->b:J

    .line 142
    iput-wide p3, p0, Lo/PackageManagerInternal$ActionBar;->c:J

    .line 143
    iput-wide p5, p0, Lo/PackageManagerInternal$ActionBar;->e:J

    return-void
.end method
