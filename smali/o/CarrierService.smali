.class public abstract Lo/CarrierService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 15
    new-instance v0, Lo/Validator;

    invoke-direct {v0}, Lo/Validator;-><init>()V

    return-object v0
.end method
