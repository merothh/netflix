.class public abstract Lo/CalendarContract;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 17
    new-instance v0, Lo/BaseColumns;

    invoke-direct {v0}, Lo/BaseColumns;-><init>()V

    return-object v0
.end method
