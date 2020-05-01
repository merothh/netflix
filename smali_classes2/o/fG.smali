.class public final Lo/fG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fG$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/fG$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fG$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fG$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fG;->c:Lo/fG$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-object v0, Lo/fG;->c:Lo/fG$ActionBar;

    invoke-virtual {v0}, Lo/fG$ActionBar;->c()Z

    move-result v0

    return v0
.end method
