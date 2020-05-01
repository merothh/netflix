.class public final Lo/LinkProperties$Activity;
.super Lo/LinkProperties;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/LinkProperties;-><init>()V

    .line 43
    iput p1, p0, Lo/LinkProperties$Activity;->d:I

    .line 44
    iput p2, p0, Lo/LinkProperties$Activity;->e:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 48
    iget v0, p0, Lo/LinkProperties$Activity;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 52
    iget v0, p0, Lo/LinkProperties$Activity;->e:I

    return v0
.end method
