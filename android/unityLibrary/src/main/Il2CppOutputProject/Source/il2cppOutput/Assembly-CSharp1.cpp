#include "pch-cpp.hpp"

#ifndef _MSC_VER
# include <alloca.h>
#else
# include <malloc.h>
#endif


#include <limits>
#include <stdint.h>


struct VirtualActionInvoker0
{
	typedef void (*Action)(void*, const RuntimeMethod*);

	static inline void Invoke (Il2CppMethodSlot slot, RuntimeObject* obj)
	{
		const VirtualInvokeData& invokeData = il2cpp_codegen_get_virtual_invoke_data(slot, obj);
		((Action)invokeData.methodPtr)(obj, invokeData.method);
	}
};
struct GenericVirtualActionInvoker0
{
	typedef void (*Action)(void*, const RuntimeMethod*);

	static inline void Invoke (const RuntimeMethod* method, RuntimeObject* obj)
	{
		VirtualInvokeData invokeData;
		il2cpp_codegen_get_generic_virtual_invoke_data(method, obj, &invokeData);
		((Action)invokeData.methodPtr)(obj, invokeData.method);
	}
};
struct InterfaceActionInvoker0
{
	typedef void (*Action)(void*, const RuntimeMethod*);

	static inline void Invoke (Il2CppMethodSlot slot, RuntimeClass* declaringInterface, RuntimeObject* obj)
	{
		const VirtualInvokeData& invokeData = il2cpp_codegen_get_interface_invoke_data(slot, obj, declaringInterface);
		((Action)invokeData.methodPtr)(obj, invokeData.method);
	}
};
struct GenericInterfaceActionInvoker0
{
	typedef void (*Action)(void*, const RuntimeMethod*);

	static inline void Invoke (const RuntimeMethod* method, RuntimeObject* obj)
	{
		VirtualInvokeData invokeData;
		il2cpp_codegen_get_generic_interface_invoke_data(method, obj, &invokeData);
		((Action)invokeData.methodPtr)(obj, invokeData.method);
	}
};
template <typename T1>
struct InvokerActionInvoker1;
template <typename T1>
struct InvokerActionInvoker1<T1*>
{
	static inline void Invoke (Il2CppMethodPointer methodPtr, const RuntimeMethod* method, void* obj, T1* p1)
	{
		void* params[1] = { p1 };
		method->invoker_method(methodPtr, method, obj, params, params[0]);
	}
};
template <typename T1, typename T2>
struct InvokerActionInvoker2;
template <typename T1, typename T2>
struct InvokerActionInvoker2<T1*, T2*>
{
	static inline void Invoke (Il2CppMethodPointer methodPtr, const RuntimeMethod* method, void* obj, T1* p1, T2* p2)
	{
		void* params[2] = { p1, p2 };
		method->invoker_method(methodPtr, method, obj, params, params[1]);
	}
};

// System.Delegate[]
struct DelegateU5BU5D_tC5AB7E8F745616680F337909D3A8E6C722CDF771;
// System.AsyncCallback
struct AsyncCallback_t7FEF460CBDCFB9C5FA2EF776984778B9A4145F4C;
// System.Delegate
struct Delegate_t;
// System.DelegateData
struct DelegateData_t9B286B493293CD2D23A5B2B5EF0E5B1324C2B77E;
// System.IAsyncResult
struct IAsyncResult_t7B9B5A0ECB35DCEC31B8A8122C37D687369253B5;
// Newtonsoft.Json.Linq.JToken
struct JToken_tFD7D9015F3F97A09AD93E439ACE894D12C06E8B3;
// FlutterUnityIntegration.MessageHandler
struct MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187;
// System.Reflection.MethodInfo
struct MethodInfo_t;
// System.String
struct String_t;
// System.Void
struct Void_t4861ACF8F4594C3437BB48B6E56783494B843915;
// FlutterUnityIntegration.UnityMessageManager/MessageDelegate
struct MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9;
// FlutterUnityIntegration.UnityMessageManager/MessageHandlerDelegate
struct MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7;

struct Delegate_t_marshaled_com;
struct Delegate_t_marshaled_pinvoke;

struct DelegateU5BU5D_tC5AB7E8F745616680F337909D3A8E6C722CDF771;

IL2CPP_EXTERN_C_BEGIN
IL2CPP_EXTERN_C_END

#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
struct Il2CppArrayBounds;

// FlutterUnityIntegration.MessageHandler
struct MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187  : public RuntimeObject
{
	// System.Int32 FlutterUnityIntegration.MessageHandler::id
	int32_t ___id_0;
	// System.String FlutterUnityIntegration.MessageHandler::seq
	String_t* ___seq_1;
	// System.String FlutterUnityIntegration.MessageHandler::name
	String_t* ___name_2;
	// Newtonsoft.Json.Linq.JToken FlutterUnityIntegration.MessageHandler::data
	JToken_tFD7D9015F3F97A09AD93E439ACE894D12C06E8B3* ___data_3;
};

// System.String
struct String_t  : public RuntimeObject
{
	// System.Int32 System.String::_stringLength
	int32_t ____stringLength_4;
	// System.Char System.String::_firstChar
	Il2CppChar ____firstChar_5;
};

struct String_t_StaticFields
{
	// System.String System.String::Empty
	String_t* ___Empty_6;
};

// System.ValueType
struct ValueType_t6D9B272BD21782F0A9A14F2E41F85A50E97A986F  : public RuntimeObject
{
};
// Native definition for P/Invoke marshalling of System.ValueType
struct ValueType_t6D9B272BD21782F0A9A14F2E41F85A50E97A986F_marshaled_pinvoke
{
};
// Native definition for COM marshalling of System.ValueType
struct ValueType_t6D9B272BD21782F0A9A14F2E41F85A50E97A986F_marshaled_com
{
};

// System.IntPtr
struct IntPtr_t 
{
	// System.Void* System.IntPtr::m_value
	void* ___m_value_0;
};

struct IntPtr_t_StaticFields
{
	// System.IntPtr System.IntPtr::Zero
	intptr_t ___Zero_1;
};

// System.Void
struct Void_t4861ACF8F4594C3437BB48B6E56783494B843915 
{
	union
	{
		struct
		{
		};
		uint8_t Void_t4861ACF8F4594C3437BB48B6E56783494B843915__padding[1];
	};
};

// <PrivateImplementationDetails>/__StaticArrayInitTypeSize=16
struct __StaticArrayInitTypeSizeU3D16_tFB2D94E174C3DFBC336BBEE6AD92E07462831A23 
{
	union
	{
		struct
		{
			union
			{
			};
		};
		uint8_t __StaticArrayInitTypeSizeU3D16_tFB2D94E174C3DFBC336BBEE6AD92E07462831A23__padding[16];
	};
};

// <PrivateImplementationDetails>
struct U3CPrivateImplementationDetailsU3E_t0F5473E849A5A5185A9F4C5246F0C32816C49FCA  : public RuntimeObject
{
};

struct U3CPrivateImplementationDetailsU3E_t0F5473E849A5A5185A9F4C5246F0C32816C49FCA_StaticFields
{
	// <PrivateImplementationDetails>/__StaticArrayInitTypeSize=16 <PrivateImplementationDetails>::BAED642339816AFFB3FE8719792D0E4CE82F12DB72B7373D244EAA65445800FE
	__StaticArrayInitTypeSizeU3D16_tFB2D94E174C3DFBC336BBEE6AD92E07462831A23 ___BAED642339816AFFB3FE8719792D0E4CE82F12DB72B7373D244EAA65445800FE_0;
};

// System.Delegate
struct Delegate_t  : public RuntimeObject
{
	// System.IntPtr System.Delegate::method_ptr
	Il2CppMethodPointer ___method_ptr_0;
	// System.IntPtr System.Delegate::invoke_impl
	intptr_t ___invoke_impl_1;
	// System.Object System.Delegate::m_target
	RuntimeObject* ___m_target_2;
	// System.IntPtr System.Delegate::method
	intptr_t ___method_3;
	// System.IntPtr System.Delegate::delegate_trampoline
	intptr_t ___delegate_trampoline_4;
	// System.IntPtr System.Delegate::extra_arg
	intptr_t ___extra_arg_5;
	// System.IntPtr System.Delegate::method_code
	intptr_t ___method_code_6;
	// System.IntPtr System.Delegate::interp_method
	intptr_t ___interp_method_7;
	// System.IntPtr System.Delegate::interp_invoke_impl
	intptr_t ___interp_invoke_impl_8;
	// System.Reflection.MethodInfo System.Delegate::method_info
	MethodInfo_t* ___method_info_9;
	// System.Reflection.MethodInfo System.Delegate::original_method_info
	MethodInfo_t* ___original_method_info_10;
	// System.DelegateData System.Delegate::data
	DelegateData_t9B286B493293CD2D23A5B2B5EF0E5B1324C2B77E* ___data_11;
	// System.Boolean System.Delegate::method_is_virtual
	bool ___method_is_virtual_12;
};
// Native definition for P/Invoke marshalling of System.Delegate
struct Delegate_t_marshaled_pinvoke
{
	intptr_t ___method_ptr_0;
	intptr_t ___invoke_impl_1;
	Il2CppIUnknown* ___m_target_2;
	intptr_t ___method_3;
	intptr_t ___delegate_trampoline_4;
	intptr_t ___extra_arg_5;
	intptr_t ___method_code_6;
	intptr_t ___interp_method_7;
	intptr_t ___interp_invoke_impl_8;
	MethodInfo_t* ___method_info_9;
	MethodInfo_t* ___original_method_info_10;
	DelegateData_t9B286B493293CD2D23A5B2B5EF0E5B1324C2B77E* ___data_11;
	int32_t ___method_is_virtual_12;
};
// Native definition for COM marshalling of System.Delegate
struct Delegate_t_marshaled_com
{
	intptr_t ___method_ptr_0;
	intptr_t ___invoke_impl_1;
	Il2CppIUnknown* ___m_target_2;
	intptr_t ___method_3;
	intptr_t ___delegate_trampoline_4;
	intptr_t ___extra_arg_5;
	intptr_t ___method_code_6;
	intptr_t ___interp_method_7;
	intptr_t ___interp_invoke_impl_8;
	MethodInfo_t* ___method_info_9;
	MethodInfo_t* ___original_method_info_10;
	DelegateData_t9B286B493293CD2D23A5B2B5EF0E5B1324C2B77E* ___data_11;
	int32_t ___method_is_virtual_12;
};

// System.MulticastDelegate
struct MulticastDelegate_t  : public Delegate_t
{
	// System.Delegate[] System.MulticastDelegate::delegates
	DelegateU5BU5D_tC5AB7E8F745616680F337909D3A8E6C722CDF771* ___delegates_13;
};
// Native definition for P/Invoke marshalling of System.MulticastDelegate
struct MulticastDelegate_t_marshaled_pinvoke : public Delegate_t_marshaled_pinvoke
{
	Delegate_t_marshaled_pinvoke** ___delegates_13;
};
// Native definition for COM marshalling of System.MulticastDelegate
struct MulticastDelegate_t_marshaled_com : public Delegate_t_marshaled_com
{
	Delegate_t_marshaled_com** ___delegates_13;
};

// System.AsyncCallback
struct AsyncCallback_t7FEF460CBDCFB9C5FA2EF776984778B9A4145F4C  : public MulticastDelegate_t
{
};

// FlutterUnityIntegration.UnityMessageManager/MessageDelegate
struct MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9  : public MulticastDelegate_t
{
};

// FlutterUnityIntegration.UnityMessageManager/MessageHandlerDelegate
struct MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7  : public MulticastDelegate_t
{
};
#ifdef __clang__
#pragma clang diagnostic pop
#endif
// System.Delegate[]
struct DelegateU5BU5D_tC5AB7E8F745616680F337909D3A8E6C722CDF771  : public RuntimeArray
{
	ALIGN_FIELD (8) Delegate_t* m_Items[1];

	inline Delegate_t* GetAt(il2cpp_array_size_t index) const
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items[index];
	}
	inline Delegate_t** GetAddressAt(il2cpp_array_size_t index)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		return m_Items + index;
	}
	inline void SetAt(il2cpp_array_size_t index, Delegate_t* value)
	{
		IL2CPP_ARRAY_BOUNDS_CHECK(index, (uint32_t)(this)->max_length);
		m_Items[index] = value;
		Il2CppCodeGenWriteBarrier((void**)m_Items + index, (void*)value);
	}
	inline Delegate_t* GetAtUnchecked(il2cpp_array_size_t index) const
	{
		return m_Items[index];
	}
	inline Delegate_t** GetAddressAtUnchecked(il2cpp_array_size_t index)
	{
		return m_Items + index;
	}
	inline void SetAtUnchecked(il2cpp_array_size_t index, Delegate_t* value)
	{
		m_Items[index] = value;
		Il2CppCodeGenWriteBarrier((void**)m_Items + index, (void*)value);
	}
};



#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
void MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_Multicast(MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, const RuntimeMethod* method)
{
	il2cpp_array_size_t length = __this->___delegates_13->max_length;
	Delegate_t** delegatesToInvoke = reinterpret_cast<Delegate_t**>(__this->___delegates_13->GetAddressAtUnchecked(0));
	for (il2cpp_array_size_t i = 0; i < length; i++)
	{
		MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* currentDelegate = reinterpret_cast<MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9*>(delegatesToInvoke[i]);
		typedef void (*FunctionPointerType) (RuntimeObject*, String_t*, const RuntimeMethod*);
		((FunctionPointerType)currentDelegate->___invoke_impl_1)((Il2CppObject*)currentDelegate->___method_code_6, ___message0, reinterpret_cast<RuntimeMethod*>(currentDelegate->___method_3));
	}
}
void MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_Open(MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, const RuntimeMethod* method)
{
	typedef void (*FunctionPointerType) (String_t*, const RuntimeMethod*);
	((FunctionPointerType)__this->___method_ptr_0)(___message0, method);
}
void MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_OpenStaticInvoker(MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, const RuntimeMethod* method)
{
	InvokerActionInvoker1< String_t* >::Invoke(__this->___method_ptr_0, method, NULL, ___message0);
}
void MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_ClosedStaticInvoker(MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, const RuntimeMethod* method)
{
	InvokerActionInvoker2< RuntimeObject*, String_t* >::Invoke(__this->___method_ptr_0, method, NULL, __this->___m_target_2, ___message0);
}
IL2CPP_EXTERN_C  void DelegatePInvokeWrapper_MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9 (MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, const RuntimeMethod* method)
{
	typedef void (DEFAULT_CALL *PInvokeFunc)(char*);
	PInvokeFunc il2cppPInvokeFunc = reinterpret_cast<PInvokeFunc>(il2cpp_codegen_get_reverse_pinvoke_function_ptr(__this));
	// Marshaling of parameter '___message0' to native representation
	char* ____message0_marshaled = NULL;
	____message0_marshaled = il2cpp_codegen_marshal_string(___message0);

	// Native function invocation
	il2cppPInvokeFunc(____message0_marshaled);

	// Marshaling cleanup of parameter '___message0' native representation
	il2cpp_codegen_marshal_free(____message0_marshaled);
	____message0_marshaled = NULL;

}
// System.Void FlutterUnityIntegration.UnityMessageManager/MessageDelegate::.ctor(System.Object,System.IntPtr)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MessageDelegate__ctor_m1309BD3DE28E87C0CC24EB097613F916E8E4A1DB (MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, RuntimeObject* ___object0, intptr_t ___method1, const RuntimeMethod* method) 
{
	__this->___method_ptr_0 = il2cpp_codegen_get_virtual_call_method_pointer((RuntimeMethod*)___method1);
	__this->___method_3 = ___method1;
	__this->___m_target_2 = ___object0;
	Il2CppCodeGenWriteBarrier((void**)(&__this->___m_target_2), (void*)___object0);
	int parameterCount = il2cpp_codegen_method_parameter_count((RuntimeMethod*)___method1);
	__this->___method_code_6 = (intptr_t)__this;
	if (MethodIsStatic((RuntimeMethod*)___method1))
	{
		bool isOpen = parameterCount == 1;
		if (il2cpp_codegen_call_method_via_invoker((RuntimeMethod*)___method1))
			if (isOpen)
				__this->___invoke_impl_1 = (intptr_t)&MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_OpenStaticInvoker;
			else
				__this->___invoke_impl_1 = (intptr_t)&MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_ClosedStaticInvoker;
		else
			if (isOpen)
				__this->___invoke_impl_1 = (intptr_t)&MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_Open;
			else
				{
					__this->___invoke_impl_1 = (intptr_t)__this->___method_ptr_0;
					__this->___method_code_6 = (intptr_t)__this->___m_target_2;
				}
	}
	else
	{
		bool isOpen = parameterCount == 0;
		if (isOpen)
		{
			__this->___invoke_impl_1 = (intptr_t)&MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_Open;
		}
		else
		{
			__this->___invoke_impl_1 = (intptr_t)__this->___method_ptr_0;
			__this->___method_code_6 = (intptr_t)__this->___m_target_2;
		}
	}
	__this->___extra_arg_5 = (intptr_t)&MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6_Multicast;
}
// System.Void FlutterUnityIntegration.UnityMessageManager/MessageDelegate::Invoke(System.String)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MessageDelegate_Invoke_m42A129A125C34AB085FEBE1CC9B5984ACC1BB7C6 (MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, const RuntimeMethod* method) 
{
	typedef void (*FunctionPointerType) (RuntimeObject*, String_t*, const RuntimeMethod*);
	((FunctionPointerType)__this->___invoke_impl_1)((Il2CppObject*)__this->___method_code_6, ___message0, reinterpret_cast<RuntimeMethod*>(__this->___method_3));
}
// System.IAsyncResult FlutterUnityIntegration.UnityMessageManager/MessageDelegate::BeginInvoke(System.String,System.AsyncCallback,System.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR RuntimeObject* MessageDelegate_BeginInvoke_mBBFD55486390BFD20AD687A88C02D1C554C6A3E3 (MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, String_t* ___message0, AsyncCallback_t7FEF460CBDCFB9C5FA2EF776984778B9A4145F4C* ___callback1, RuntimeObject* ___object2, const RuntimeMethod* method) 
{
	void *__d_args[2] = {0};
	__d_args[0] = ___message0;
	return (RuntimeObject*)il2cpp_codegen_delegate_begin_invoke((RuntimeDelegate*)__this, __d_args, (RuntimeDelegate*)___callback1, (RuntimeObject*)___object2);
}
// System.Void FlutterUnityIntegration.UnityMessageManager/MessageDelegate::EndInvoke(System.IAsyncResult)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MessageDelegate_EndInvoke_m1C05B416E71A364B4560BA5085ECBBAF6BF87E97 (MessageDelegate_tDF550588A628E583D53EB8B7B4D75F3F966F9BC9* __this, RuntimeObject* ___result0, const RuntimeMethod* method) 
{
	il2cpp_codegen_delegate_end_invoke((Il2CppAsyncResult*) ___result0, 0);
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_Multicast(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	il2cpp_array_size_t length = __this->___delegates_13->max_length;
	Delegate_t** delegatesToInvoke = reinterpret_cast<Delegate_t**>(__this->___delegates_13->GetAddressAtUnchecked(0));
	for (il2cpp_array_size_t i = 0; i < length; i++)
	{
		MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* currentDelegate = reinterpret_cast<MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7*>(delegatesToInvoke[i]);
		typedef void (*FunctionPointerType) (RuntimeObject*, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187*, const RuntimeMethod*);
		((FunctionPointerType)currentDelegate->___invoke_impl_1)((Il2CppObject*)currentDelegate->___method_code_6, ___handler0, reinterpret_cast<RuntimeMethod*>(currentDelegate->___method_3));
	}
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_Open(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	typedef void (*FunctionPointerType) (MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187*, const RuntimeMethod*);
	((FunctionPointerType)__this->___method_ptr_0)(___handler0, method);
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenStaticInvoker(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	InvokerActionInvoker1< MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* >::Invoke(__this->___method_ptr_0, method, NULL, ___handler0);
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_ClosedStaticInvoker(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	InvokerActionInvoker2< RuntimeObject*, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* >::Invoke(__this->___method_ptr_0, method, NULL, __this->___m_target_2, ___handler0);
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenVirtual(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	VirtualActionInvoker0::Invoke(il2cpp_codegen_method_get_slot(method), ___handler0);
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenInterface(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	InterfaceActionInvoker0::Invoke(il2cpp_codegen_method_get_slot(method), il2cpp_codegen_method_get_declaring_type(method), ___handler0);
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenGenericVirtual(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	GenericVirtualActionInvoker0::Invoke(method, ___handler0);
}
void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenGenericInterface(MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method)
{
	GenericInterfaceActionInvoker0::Invoke(method, ___handler0);
}
// System.Void FlutterUnityIntegration.UnityMessageManager/MessageHandlerDelegate::.ctor(System.Object,System.IntPtr)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MessageHandlerDelegate__ctor_m287CBD25D77011FC5A52D1090F6CC31353AB6364 (MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, RuntimeObject* ___object0, intptr_t ___method1, const RuntimeMethod* method) 
{
	__this->___method_ptr_0 = il2cpp_codegen_get_virtual_call_method_pointer((RuntimeMethod*)___method1);
	__this->___method_3 = ___method1;
	__this->___m_target_2 = ___object0;
	Il2CppCodeGenWriteBarrier((void**)(&__this->___m_target_2), (void*)___object0);
	int parameterCount = il2cpp_codegen_method_parameter_count((RuntimeMethod*)___method1);
	__this->___method_code_6 = (intptr_t)__this;
	if (MethodIsStatic((RuntimeMethod*)___method1))
	{
		bool isOpen = parameterCount == 1;
		if (il2cpp_codegen_call_method_via_invoker((RuntimeMethod*)___method1))
			if (isOpen)
				__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenStaticInvoker;
			else
				__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_ClosedStaticInvoker;
		else
			if (isOpen)
				__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_Open;
			else
				{
					__this->___invoke_impl_1 = (intptr_t)__this->___method_ptr_0;
					__this->___method_code_6 = (intptr_t)__this->___m_target_2;
				}
	}
	else
	{
		bool isOpen = parameterCount == 0;
		if (isOpen)
		{
			if (__this->___method_is_virtual_12)
			{
				if (il2cpp_codegen_method_is_generic_instance_method((RuntimeMethod*)___method1))
					if (il2cpp_codegen_method_is_interface_method((RuntimeMethod*)___method1))
						__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenGenericInterface;
					else
						__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenGenericVirtual;
				else
					if (il2cpp_codegen_method_is_interface_method((RuntimeMethod*)___method1))
						__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenInterface;
					else
						__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_OpenVirtual;
			}
			else
			{
				__this->___invoke_impl_1 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_Open;
			}
		}
		else
		{
			__this->___invoke_impl_1 = (intptr_t)__this->___method_ptr_0;
			__this->___method_code_6 = (intptr_t)__this->___m_target_2;
		}
	}
	__this->___extra_arg_5 = (intptr_t)&MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B_Multicast;
}
// System.Void FlutterUnityIntegration.UnityMessageManager/MessageHandlerDelegate::Invoke(FlutterUnityIntegration.MessageHandler)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MessageHandlerDelegate_Invoke_mD1EC9E1841D5014C40A26D4C4BA076482FFC8A4B (MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, const RuntimeMethod* method) 
{
	typedef void (*FunctionPointerType) (RuntimeObject*, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187*, const RuntimeMethod*);
	((FunctionPointerType)__this->___invoke_impl_1)((Il2CppObject*)__this->___method_code_6, ___handler0, reinterpret_cast<RuntimeMethod*>(__this->___method_3));
}
// System.IAsyncResult FlutterUnityIntegration.UnityMessageManager/MessageHandlerDelegate::BeginInvoke(FlutterUnityIntegration.MessageHandler,System.AsyncCallback,System.Object)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR RuntimeObject* MessageHandlerDelegate_BeginInvoke_m0CC5C5B29E11DD03F1726B49E4B1E516479AC58D (MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, MessageHandler_tEE37C4AFC092979F884A7E7B830F004FDE7D3187* ___handler0, AsyncCallback_t7FEF460CBDCFB9C5FA2EF776984778B9A4145F4C* ___callback1, RuntimeObject* ___object2, const RuntimeMethod* method) 
{
	void *__d_args[2] = {0};
	__d_args[0] = ___handler0;
	return (RuntimeObject*)il2cpp_codegen_delegate_begin_invoke((RuntimeDelegate*)__this, __d_args, (RuntimeDelegate*)___callback1, (RuntimeObject*)___object2);
}
// System.Void FlutterUnityIntegration.UnityMessageManager/MessageHandlerDelegate::EndInvoke(System.IAsyncResult)
IL2CPP_EXTERN_C IL2CPP_METHOD_ATTR void MessageHandlerDelegate_EndInvoke_mAD2746E001DB9A3D18A1D806610542321FE0CF16 (MessageHandlerDelegate_tD699F4A46730E1E36FD38389F7A09EB8B3F2A2B7* __this, RuntimeObject* ___result0, const RuntimeMethod* method) 
{
	il2cpp_codegen_delegate_end_invoke((Il2CppAsyncResult*) ___result0, 0);
}
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
#ifdef __clang__
#pragma clang diagnostic pop
#endif
#ifdef __clang__
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Winvalid-offsetof"
#pragma clang diagnostic ignored "-Wunused-variable"
#endif
#ifdef __clang__
#pragma clang diagnostic pop
#endif
