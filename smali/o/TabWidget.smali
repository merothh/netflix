.class public abstract Lo/TabWidget;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 12
    new-instance v0, Lo/TableRow;

    invoke-direct {v0}, Lo/TableRow;-><init>()V

    return-object v0
.end method
