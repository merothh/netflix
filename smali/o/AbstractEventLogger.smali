.class public final Lo/AbstractEventLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AbstractEventLogger$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/AbstractEventLogger$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/AbstractEventLogger$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/AbstractEventLogger$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/AbstractEventLogger;->d:Lo/AbstractEventLogger$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
