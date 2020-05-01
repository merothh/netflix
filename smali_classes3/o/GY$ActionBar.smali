.class public abstract Lo/GY$ActionBar;
.super Lo/GY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GY$ActionBar$ActionBar;,
        Lo/GY$ActionBar$Application;,
        Lo/GY$ActionBar$TaskDescription;,
        Lo/GY$ActionBar$Activity;,
        Lo/GY$ActionBar$StateListAnimator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lo/GY;-><init>(Lo/amc;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/GY$ActionBar;-><init>()V

    return-void
.end method
