.class public Lo/NanoAppMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NanoAppInstanceInfo;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lo/NanoAppMessage;->a:I

    return-void
.end method


# virtual methods
.method public createImageTranscoder(Lo/GestureLibraries;Z)Lo/GeofenceHardwareRequestParcelable;
    .locals 1

    .line 22
    new-instance p1, Lo/NanoAppFilter;

    iget v0, p0, Lo/NanoAppMessage;->a:I

    invoke-direct {p1, p2, v0}, Lo/NanoAppFilter;-><init>(ZI)V

    return-object p1
.end method
