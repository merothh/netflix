.class public interface abstract Lcom/netflix/android/moneyball/GetField;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/moneyball/GetField$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract findOptionField(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lcom/netflix/android/moneyball/fields/OptionField;
.end method

.method public abstract getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;
.end method

.method public abstract getFieldNonResursive(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;
.end method

.method public abstract getFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initFields(Ljava/util/Map;Lcom/netflix/android/moneyball/FlowMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/android/moneyball/FlowMode;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setFields(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)V"
        }
    .end annotation
.end method
