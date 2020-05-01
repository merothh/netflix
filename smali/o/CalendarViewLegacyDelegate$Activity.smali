.class public Lo/CalendarViewLegacyDelegate$Activity;
.super Lo/hK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CalendarViewLegacyDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field b:Ljava/lang/Runnable;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 242
    iput-object p5, p0, Lo/CalendarViewLegacyDelegate$Activity;->d:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lo/CalendarViewLegacyDelegate$Activity;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 250
    invoke-direct/range {p0 .. p6}, Lo/CalendarViewLegacyDelegate$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 251
    iput-object p7, p0, Lo/CalendarViewLegacyDelegate$Activity;->g:Ljava/lang/Runnable;

    return-void
.end method
