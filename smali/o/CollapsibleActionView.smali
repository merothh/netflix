.class public final Lo/CollapsibleActionView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/DisplayAdjustments;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lo/CollapsibleActionView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/CollapsibleActionView;

    invoke-direct {v0}, Lo/CollapsibleActionView;-><init>()V

    sput-object v0, Lo/CollapsibleActionView;->c:Lo/CollapsibleActionView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lo/CollapsibleActionView;
    .locals 1

    .line 19
    sget-object v0, Lo/CollapsibleActionView;->c:Lo/CollapsibleActionView;

    return-object v0
.end method


# virtual methods
.method public d()Lo/DisplayAdjustments;
    .locals 1

    .line 15
    new-instance v0, Lo/DisplayAdjustments;

    invoke-direct {v0}, Lo/DisplayAdjustments;-><init>()V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/CollapsibleActionView;->d()Lo/DisplayAdjustments;

    move-result-object v0

    return-object v0
.end method
