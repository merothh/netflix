.class public abstract Lo/Transformation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 20
    new-instance v0, Lo/SaveRequest;

    invoke-direct {v0}, Lo/SaveRequest;-><init>()V

    return-object v0
.end method
