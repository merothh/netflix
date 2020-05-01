.class public Lcom/bugsnag/android/NativeInterface$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final e:Lcom/bugsnag/android/NativeInterface$MessageType;


# direct methods
.method public constructor <init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/bugsnag/android/NativeInterface$ActionBar;->e:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 139
    iput-object p2, p0, Lcom/bugsnag/android/NativeInterface$ActionBar;->c:Ljava/lang/Object;

    return-void
.end method
