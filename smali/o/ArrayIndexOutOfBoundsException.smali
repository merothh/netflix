.class public Lo/ArrayIndexOutOfBoundsException;
.super Lo/Enum;
.source ""


# instance fields
.field private c:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Enum;-><init>()V

    .line 35
    iput-object p1, p0, Lo/ArrayIndexOutOfBoundsException;->c:Landroid/app/Application;

    return-void
.end method
