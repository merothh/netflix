.class public final Lo/Ns;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ns$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/Ns$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ns$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ns$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ns;->c:Lo/Ns$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
